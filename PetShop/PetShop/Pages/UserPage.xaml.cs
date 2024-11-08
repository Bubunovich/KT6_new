using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace PetShop.Pages
{
    /// <summary>
    /// Логика взаимодействия для UserPage.xaml
    /// </summary>
    public partial class UserPage : Page
    {
        public UserPage()
        {
            InitializeComponent();
            Init();
        }
        public void Init()
        {
            UserListView.ItemsSource = Data.PetShopEntities.GetContext().Product.ToList();
            var produclist = Data.PetShopEntities.GetContext().Producer.ToList();
            produclist.Insert(0, new Data.Producer { Producer1 = "Все производители" });
            UserComboBox.ItemsSource = produclist;
            UserComboBox.SelectedIndex = 0;

            if (Classes.Manager.curentUser != null)
            {
                FIOLabel.Content = $"{Classes.Manager.curentUser.SureName} " +
                    $"+ {Classes.Manager.curentUser.UserName}" +
                    $" + {Classes.Manager.curentUser.UserPatronymic}";
            }

            CountLabel.Content = $"{Data.PetShopEntities.GetContext().Product.Count()}" +
                $"/{ Data.PetShopEntities.GetContext().Product.Count()}";
        }
        private void GoBackButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.LoginPage());
        }

        private void HightRadioButton_Click(object sender, RoutedEventArgs e)
        {

        }

        private void DownRadioButton_Click(object sender, RoutedEventArgs e)
        {

        }

        private void DeleteButton_Click(object sender, RoutedEventArgs e)
        {

        }

        private void AppendButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.AppendPage());
        }
    }
}
