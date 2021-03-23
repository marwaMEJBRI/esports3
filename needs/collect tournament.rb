=begin  

index tournament
<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Result</th>
      <th>Brodcast Link</th>
      <th>start date</th>
      <th>End date</th>
      <th colspan="3"></th>
    </tr>
  </thead>

  <tbody>
    <% @tournaments.each do |tournament| %>
      <tr>
        <td><%= tournament.name %></td>
         <td><%= tournament.start_date %></td>
         <td><%= tournament.end_date %></td>
        <td><%= link_to 'Show', tournament%></td>
        <td><%= link_to 'Edit', edit_tournamentpath(tournament %></td>
        <td><%= link_to 'Destroy', tournament method: :delete, data: { confirm: 'Are you sure?' } %></td>
      </tr>
    <% end %>
  </tbody>
</table>

<br> 

new tournament<div class="container">   
  <%= simple_form_for @tournamentteam, url: {action: :create} do |f| %>   
      <div>   
        <h3>Add a tournament</h3>   
      </div>   
      <div>   
        <p>   
          <%= "<div>#{@tournament.errors.full_messages.first}</div>".html_safe if @tournament.errors.any? %>   
        <div>   
            <label>name</label>   
              <%= f.text_field :name %>   
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
        <%= link_to 'Back', { controller: 'tournaments', action: 'index'} %>   
        <%= f.submit 'Create product' %>   
      </div>   
  <% end %>   
</div>  

show tournament<p id="notice"><%= notice %></p>

<p>
  <strong>Name:</strong>
  <%= @tournamentname %>
</p>

<p>
  <strong>start date:</strong>
  <%= @tournamentstart_date %>
</p>
<p>
  <strong>:end date:</strong>
  <%= @tournament:end_date %>
</p>

<%= link_to 'Edit', edit_tournament_path(@tournament %> |
<%= link_to 'Back', tournaments_path %>



 =end