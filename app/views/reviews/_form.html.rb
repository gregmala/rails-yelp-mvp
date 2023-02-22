<%= simple_form_for([restaurant, Review.new]) do |f| %>
  
  <div class="form-inputs">
    <%= f.input :content %>
  </div>

  <div class="form-actions">
    <%= f.button :submit, class: "btn btn-primary" %>
  </div>
<% end %>
