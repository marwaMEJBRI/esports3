=begin 

index match
<table>
  <thead>
    <tr>
      <th>Match Name</th>
      <th>Result</th>
      <th>Brodcast Link</th>
      <th>start date</th>
      <th>End date</th>
      <th colspan="3"></th>
    </tr>
  </thead>

  <tbody>
    <% @matches.each do |match| %>
      <tr>
        <td><%= match.name %></td>
        <td><%= match.result %></td>
        <td><%= match.brodcast_link %></td>
         <td><%= match.start_date %></td>
         <td><%= match.end_date %></td>
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
  <%= simple_form_for @team, url: {action: :create} do |f| %>   
      <div>   
        <h3>Add a team</h3>   
      </div>   
      <div>   
        <p>   
          <%= "<div>#{@team.errors.full_messages.first}</div>".html_safe if @team.errors.any? %>   
        <div>   
            <label>name</label>   
              <%= f.text_field :name %>   
        </div>   
  
        <div>   
             <label>Result</label>   
             <%= f.text_field :Result %>   
        </div>   
        <div>   
        <label>Brodcast Link</label>   
        <%= f.text_field :brodcast_link %>   
       </div>
       <div>   
       <label>start date</label>   
       <%= f.text_field :start_date %>   
        </div>
        <div>   
        <label> End date</label>   
        <%= f.text_field :end_date %>   
        </div>
         </p>   
      </div>   
      <div>   
        <%= link_to 'Back', { controller: 'teams', action: 'index'} %>   
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
  <%= @match.brodcast_link %>
</p>

<p>
  <strong>start date:</strong>
  <%= @match.start_date %>
</p>
<p>
  <strong>:end date:</strong>
  <%= @match.:end_date %>
</p>

<%= link_to 'Edit', edit_match_path(@match) %> |
<%= link_to 'Back', matches_path %>



 =end