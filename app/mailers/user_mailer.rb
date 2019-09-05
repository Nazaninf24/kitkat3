class UserMailer < ApplicationMailer
    def welcome_email(user)
        @user = user
      mail(from: "kitkatclub@gmail.com", to: @user, subject: "Petit message de bienvenue")
   end
 
   def user_order(email, cart)
     @email = email
     @cart = cart
     mail(from: "kitkatclub@gmail.com", to: email, subject: "Votre commande")
    end
 
    def admin_order(amount)
     @amount = amount
      mail(from: "kitkatclub@gmail.com", to: "admin_kitkatclub@gmail.com", subject: "Nouvelle commande passée")
   end
end
