﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Squiggle.Client.Activities
{
    public static class SquiggleActivities
    {
        public static readonly Guid FileTransfer = new Guid("0284B27D-2C62-46EC-AEF0-CFFA70106CFD");
        public static readonly Guid VoiceChat = new Guid("C9D3DE67-4078-4E2E-9312-7C78D786C8F8");

        public static IEnumerable<Guid> All { get; private set; }

        static SquiggleActivities()
        {
            All = typeof(SquiggleActivities).GetFields(System.Reflection.BindingFlags.Static | System.Reflection.BindingFlags.Public)
                                      .Where(f => f.FieldType == typeof(Guid))
                                      .Select(f => f.GetValue(null))
                                      .Cast<Guid>()
                                      .ToList();
        }
    }
}
