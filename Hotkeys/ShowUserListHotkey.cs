﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Input;
using System.Windows;

namespace KailleraNET.Hotkeys
{
    class ShowUserListHotkey : HotKey
    {
        public ShowUserListHotkey(string name, Key key, ModifierKeys modifiers, bool enabled)
            : base(key, modifiers, enabled)
        {
            Name = name;
        }

        private string name;
        public string Name
        {
            get { return name; }
            set
            {
                if (value != name)
                {
                    name = value;
                    OnPropertyChanged(name);
                }
            }
        }

        protected override void OnHotKeyPress()
        {
            KailleraWindowController.getMgr().showUsersWindow();
        }


        protected ShowUserListHotkey(System.Runtime.Serialization.SerializationInfo info, System.Runtime.Serialization.StreamingContext context)
            : base(info, context)
        {
            Name = info.GetString("ShowUserListHotkey");
        }

        public override void GetObjectData(System.Runtime.Serialization.SerializationInfo info, System.Runtime.Serialization.StreamingContext context)
        {
            base.GetObjectData(info, context);

            info.AddValue("ShowUserListHotkey", Name);
        }
    }
}
