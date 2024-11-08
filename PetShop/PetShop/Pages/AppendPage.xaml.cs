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
    /// Логика взаимодействия для AppendPage.xaml
    /// </summary>
    public partial class AppendPage : Page
    {
        public AppendPage()
        {
            InitializeComponent();
            Init();
        }
        public void Init()
        {
          
            var produclist = Data.PetShopEntities.GetContext().Category.ToList();
            produclist.Insert(0, new Data.Category { CategoryName = "Все категории" });
            AppendComboBox.ItemsSource = produclist;
            AppendComboBox.SelectedIndex = 0;
        }

        private void GoBackButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.AdminPage());
        }

        private void AppendButton_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
