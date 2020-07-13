﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Squiggle.UI.Resources;

namespace Squiggle.UI
{
    static class Emoticons
    {
        public static readonly Emoticon Angry = new Emoticon(new Uri("pack://siteoforigin:,,,/Images/Emoticons/angry.png", UriKind.Absolute), 
                                                             Translation.Instance.Emoticon_Angry, 
                                                             ":@", ":-@");

        public static readonly Emoticon Crying = new Emoticon(new Uri("pack://siteoforigin:,,,/Images/Emoticons/crying.png", UriKind.Absolute), 
                                                              Translation.Instance.Emoticon_Crying, 
                                                              ":'(");

        //public static readonly Emoticon Disappointed = new Emoticon(new Uri("pack://siteoforigin:,,,/Images/Emoticons/disappointed.png", UriKind.Absolute),
        //                                                            Translation.Instance.Emoticon_Disappointed, 
        //                                                            ":-|", ":|");
        // Added By Javier Hernandez
        public static readonly Emoticon Blushing = new Emoticon(new Uri("pack://siteoforigin:,,,/Images/Emoticons/blushing.png", UriKind.Absolute),
                                                                    Translation.Instance.Emoticon_Blushing, 
                                                                    ":-8", ":8");
        public static readonly Emoticon Love = new Emoticon(new Uri("pack://siteoforigin:,,,/Images/Emoticons/love.png", UriKind.Absolute),
                                                                    Translation.Instance.Emoticon_Love,
                                                                    "8-|", "8|");

        public static readonly Emoticon Burn = new Emoticon(new Uri("pack://siteoforigin:,,,/Images/Emoticons/burn.png", UriKind.Absolute),
                                                                    Translation.Instance.Emoticon_Burn,
                                                                    "(b)", "(burn)");

        public static readonly Emoticon Shout = new Emoticon(new Uri("pack://siteoforigin:,,,/Images/Emoticons/shout.png", UriKind.Absolute),
                                                            Translation.Instance.Emoticon_Shout,
                                                            "(s)", "(shout)");

        public static readonly Emoticon Slobber= new Emoticon(new Uri("pack://siteoforigin:,,,/Images/Emoticons/slobber.png", UriKind.Absolute),
                                                    Translation.Instance.Emoticon_Slobber,
                                                    ":-P-", ":P-");

        public static readonly Emoticon Question = new Emoticon(new Uri("pack://siteoforigin:,,,/Images/Emoticons/question.png", UriKind.Absolute),
                                                    Translation.Instance.Emoticon_Question,
                                                    "?:-P", "?:P");

        // --------------------------

        public static readonly Emoticon Hot = new Emoticon(new Uri("pack://siteoforigin:,,,/Images/Emoticons/hot.png", UriKind.Absolute), 
                                                            Translation.Instance.Emoticon_Hot, 
                                                            "(h)");

        public static readonly Emoticon OpenMouthed = new Emoticon(new Uri("pack://siteoforigin:,,,/Images/Emoticons/laughing.png", UriKind.Absolute), 
                                                                    Translation.Instance.Emoticon_Laughing, 
                                                                    ":-D", ":d");

        public static readonly Emoticon Sad = new Emoticon(new Uri("pack://siteoforigin:,,,/Images/Emoticons/sad.png", UriKind.Absolute), 
                                                            Translation.Instance.Emoticon_Sad, 
                                                            ":-(", ":(");

        //public static readonly Emoticon Sarcastic = new Emoticon(new Uri("pack://siteoforigin:,,,/Images/Emoticons/sarcastic.png", UriKind.Absolute), 
        //                                                        Translation.Instance.Emoticon_Sarcastic, 
        //                                                        "^o)");

        //public static readonly Emoticon Silence = new Emoticon(new Uri("pack://siteoforigin:,,,/Images/Emoticons/silent.png", UriKind.Absolute), 
        //                                                        Translation.Instance.Emoticon_Silence, 
        //                                                        ":-#");

        public static readonly Emoticon Smile = new Emoticon(new Uri("pack://siteoforigin:,,,/Images/Emoticons/smile.png", UriKind.Absolute), 
                                                             Translation.Instance.Emoticon_Smile, 
                                                             ":-)", ":)");

        public static readonly Emoticon Surprised = new Emoticon(new Uri("pack://siteoforigin:,,,/Images/Emoticons/surprised.png", UriKind.Absolute), 
                                                                Translation.Instance.Emoticon_Surprised, 
                                                                ":-O", ":o");

        public static readonly Emoticon TongueOut = new Emoticon(new Uri("pack://siteoforigin:,,,/Images/Emoticons/tongue.png", UriKind.Absolute), 
                                                                Translation.Instance.Emoticon_ToungeOut, 
                                                                ":-p", ":p");

        public static readonly Emoticon Wink = new Emoticon(new Uri("pack://siteoforigin:,,,/Images/Emoticons/winking.png", UriKind.Absolute), 
                                                            Translation.Instance.Emoticon_Wink, 
                                                            ";-)", ";)");

        static List<Emoticon> allEmoticons = new List<Emoticon>();
        public static IEnumerable<Emoticon> All
        {
            get { return allEmoticons; }
        }

        static Emoticons()
        {
            allEmoticons.AddRange(from emoticon in typeof(Emoticons).GetFields(System.Reflection.BindingFlags.Static | System.Reflection.BindingFlags.Public)
                                  where emoticon.FieldType.Equals(typeof(Emoticon))
                                  select (Emoticon)emoticon.GetValue(null));
        }
    }
}
