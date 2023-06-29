document.getElementById('expense-form').addEventListener('submit', addExpense);

function addExpense(e) {
  e.preventDefault();
  
  // Get input values
  const name = document.getElementById('expense-name').value;
  const amount = parseFloat(document.getElementById('expense-amount').value);
  
  // Create new list item
  const li = document.createElement('li');
  li.textContent = `${name}: $${amount.toFixed(2)}`;
  
  // Add item to expense list
  document.getElementById('expense-list').appendChild(li);
  
  // Clear input fields
  document.getElementById('expense-name').value = '';
  document.getElementById('expense-amount').value = '';
}