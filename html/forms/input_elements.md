<form name="adventure" action="" method="post"> <!-- Starts form, action defines what happens after form submitted -->
  <fieldset> <!-- Tag used to group related elements in a form -->
    <div> <!-- Divider used to group elements -->
      <label>Full name:</label> <!-- Label of input box -->
      <input type="text" name="fullname"> <!-- Input. Type is what format the computer will expect -->
    </div>

    <div>
      <label>Email:</label>
      <input type="email" name="email">
    </div>

    <div>
      <label>Password:</label> <!-- Changes the input to asterisks for privacy -->
      <input type="password" name="password">
    </div>
  </fieldset>

  <fieldset>
    <div>
      <label>Adventure name:</label>
      <input type="text" name="adv-name" placeholder="Name this adventure"> <!-- Attribute that specifies a short hint -->
    </div>

    <div>
      <label>Type of bicycle:</label>
      <select name="bike">
        <option value="road">Road</option> <!-- Option is something you can choose from a drop down menu. Value: Specifies a value to be sent to a server when form is submitted -->
        <option value="road">Mountain</option>
        <option value="road">Cyclocross</option>
      </select>
    </div>

    <div>    
      <label>Choose a date:</label>
      <input type="date" name="date"> <!-- Input is expected to be day, month, year format. -->
    </div>

    <div>
      <input type="checkbox" name="cb-agree" value="agree"> <!-- Specifies that an element should be checked when the page loads -->
      I am prepared to lead this adventure.
    </div>
  </fieldset>
  
  <button type="submit">Save this adventure</button> <!-- Creates a submit button -->
</form>