
=begin 
index match
<table>
  <thead>
    <tr>
      <th>Match Name</th>
      <th>Result</th>
      <th>Brodcast Link</th>
      <th colspan="3"></th>
    </tr>
  </thead>

  <tbody>
    <% @matches.each do |match| %>
      <tr>
        <td><%= match.name %></td>
        <td><%= match.result %></td>
        <td><%= match.brodcast_link %></td>
        <td><%= link_to 'Show', match %></td>
        <td><%= link_to 'Edit', edit_match_path(match) %></td>
        <td><%= link_to 'Destroy', match, method: :delete, data: { confirm: 'Are you sure?' } %></td>
      </tr>
    <% end %>
  </tbody>
</table>

<br> 

new match
<div class="container">   
  <%= simple_form_for @course, url: {action: :create} do |f| %>   
      <div>   
        <h3>Add a course</h3>   
      </div>   
      <div>   
        <p>   
          <%= "<div>#{@course.errors.full_messages.first}</div>".html_safe if @course.errors.any? %>   
        <div>   
            <label>Course Title</label>   
              <%= f.text_field :title %>   
        </div>   
  
        <div>   
             <label>Course Description</label>   
             <%= f.text_field :description %>   
        </div>   
  
         </p>   
      </div>   
      <div>   
        <%= link_to 'Back', { controller: 'courses', action: 'index'} %>   
        <%= f.submit 'Create product' %>   
      </div>   
  <% end %>   
</div>  

show match
<p id="notice"><%= notice %></p>

<p>
  <strong>Name:</strong>
  <%= @match.name %>
</p>

<p>
  <strong>Result:</strong>
  <%= @match.result %>
</p>

<p>
  <strong>Brodcast Link:</strong>
  <%= @match.broadcast_link %>
</p>

<%= link_to 'Edit', edit_match_path(@match) %> |
<%= link_to 'Back', matches_path %>

 =end

