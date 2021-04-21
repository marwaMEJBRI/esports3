
# NewComment.with(post: @post).deliver_later(current_user)
# NewComment.with(post: @post).deliver_later(User.all)

# class NewComment < Noticed::Base
#     deliver_by :database, format: :to-database
#     deliver_by :action_cable
#     deliver_by :email, mailer: 'UserMailer'
#     deliver_by :custom, class: 'MydeliveryMethod'
#     deliver_by :slack
#     def to_database
#         {
#             type: self.class.name,
#             params: params ,
#             account: Current.account,
#         }
#     end
#     param :post
  
#     # I18n helpers
#     def message
#       t(".message")
#     end
  
#     # URL helpers are accessible in notifications
#     # Don't forget to set your default_url_options so Rails knows how to generate urls
#     def url
#       post_path(params[:post])
#     end
  
    
  
#   end