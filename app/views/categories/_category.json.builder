<%= form_with(model: category, local: true) do |form| %>
  <% if category.errors.any? %>
    <div id="error_explanation">
      <h2><%= pluralize(category.errors.count, "error") %> prohibited this category from being saved:</h2>

      <ul>
      <% category.errors.full_messages.each do |message| %>
        <li><%= message %></li>
      <% end %>
      </ul>
    </div>
  <% end %>

  <div class="field">
    <%= form.label :name %>
    <%= form.text_field :name %>
  </div>

  <div class="field">
    <%= form.label :description %>
    <%= form.text_area :description %>
  </div>

  <div class="actions">
    <%= form.submit %>
  </div>
<% end %>
