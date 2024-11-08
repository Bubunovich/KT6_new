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
    /// Логика взаимодействия для LoginPage.xaml
    /// </summary>
    public partial class LoginPage : Page
    {
        public LoginPage()
        {
            InitializeComponent();
        }

        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();
            try
            {
                if (string.IsNullOrEmpty(LoginTextBox.Text))
                {
                    errors.AppendLine("Заполните логин!");
                }

                if (string.IsNullOrEmpty(LoginPasswordBox.Password))
                {
                    errors.AppendLine("Заполните пароль!");
                }

                if (errors.Length > 0)
                {
                    MessageBox.Show(errors.ToString(), "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }

                if(Data.PetShopEntities.GetContext().User.Any(d => 
                d.UserLogin == LoginTextBox.Text && 
                d.UserPassword == LoginPasswordBox.Password))
                {
                    var user = Data.PetShopEntities.GetContext().User.Where(d =>
                    d.UserLogin == LoginTextBox.Text &&
                    d.UserPassword == LoginPasswordBox.Password).FirstOrDefault();

                    Classes.Manager.curentUser = user;

                    switch (user.Role.RoleName)
                    {
                        case "Администратор":
                            Classes.Manager.MainFrame.Navigate(new Pages.AdminPage());
                            break;
                        case "Менеджер":
                            Classes.Manager.MainFrame.Navigate(new Pages.UserPage());
                            break;
                        case "Клиент":
                            Classes.Manager.MainFrame.Navigate(new Pages.UserPage());
                            break;
                    }
                    MessageBox.Show("Успех!", "Успех!", MessageBoxButton.OK, MessageBoxImage.Information);
                }
                else
                {
                    MessageBox.Show("Неверный логин/пароль", "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString(), "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
            }

        }

        private void GuestButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.UserPage());
        }
    }
}
