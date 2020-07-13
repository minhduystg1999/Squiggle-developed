﻿using System;
using System.Windows.Data;

namespace Squiggle.UI.Converters
{
    class AllEqualConverter: IMultiValueConverter
    {
        public object Convert(object[] values, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            if (values.Length == 0)
                return true;

            bool allEqual = true;
            for (int i = 1; allEqual && i < values.Length; i++)
                allEqual &= values[i-1].Equals(values[i]);

            return allEqual;
        }

        public object[] ConvertBack(object value, Type[] targetTypes, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
