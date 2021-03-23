=begin 

index team
<table>
  <thead>
    <tr>
      <th>team Name</th>
      <th colspan="3"></th>
    </tr>
  </thead>

  <tbody>
    <% @teams.each do |team| %>
      <tr>
        <td><%= team.name %></td>
        <td><%= link_to 'Show', team %></td>
        <td><%= link_to 'Edit', edit_team_path(team) %></td>
        <td><%= link_to 'Destroy', team, method: :delete, data: { confirm: 'Are you sure?' } %></td>
      </tr>
    <% end %>
  </tbody>
</table>

<br> 

adsadasda
adasdasdas
new team
<div class="container">   
  <%= simple_form_for @team, url: {action: :create} do |f| %>   
      <div>   
        <h3>Add a team</h3>   
      </div>   
      <div>   
        <p>   
          <%= "<div>#{@team.errors.full_messages.first}</div>".html_safe if @team.errors.any? %>   
        <div>   
            <label>team name</label>   
              <%= f.text_field :name %>   
        </div>     
         </p>   
      </div>   
      <div>   
        <%= link_to 'Back', { controller: 'teams', action: 'index'} %>   
        <%= f.submit 'Create product' %>   
      </div>   
  <% end %>   
</div>  

show team
<p id="notice"><%= notice %></p>

<p>
  <strong>Name:</strong>
  <%= @team.name %>
</p>

<%= link_to 'Edit', edit_team_path(@team) %> |
<%= link_to 'Back', teams_path %>



 =end