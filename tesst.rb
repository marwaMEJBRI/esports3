<% if !(user_signed_in?) %>

<div class="d-sm-flex align-items-center justify-content-between mb-4">
  <%=link_to 'Login',new_user_session_path, class: 'btn btn-sm btn-outline-primary' %>
  <%=link_to 'Sign up',new_user_registration_path, class: 'btn btn-sm btn-outline-primary' %>
 
</div>

<% else %>

  <div class="topbar-divider d-none d-sm-block"></div>

  <!-- Nav Item - User Information -->
  <li class="nav-item dropdown no-arrow">
    <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      <span class="mr-2 d-none d-lg-inline text-gray-600 small"><%= current_user.email %></span>
    </a>
  
    
    <!-- Dropdown - User Information -->
    <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
      
      <%= link_to edit_user_registration_path, class: 'dropdown-item' do %>
        <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
        Edit Profile
      <% end %>


      <div class="dropdown-divider"></div>
      
      <%= link_to destroy_user_session_path, method: :delete, class: 'dropdown-item' do %>
        <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
        Log Out
      <% end %>
    </div>
  </li>
  
<% end %>