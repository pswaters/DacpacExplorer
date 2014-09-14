﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using dacpac;

namespace DacpacExplorer
{
    public partial class App : Application
    {
        public DataSchemaModel Model { get; set; }
        public string DacFilePath;

        public event ModelUpdated ModelUpdated;

        public App()
        {
            Current.Properties["App"] = this;               
        }

        public void InvokeModelUpdate()
        {
            if (ModelUpdated == null)
                return;

            ModelUpdated(this);
        }
    }

    public delegate void ModelUpdated(object sender);

    
}