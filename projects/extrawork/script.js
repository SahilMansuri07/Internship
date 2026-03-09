function addData(event) {
  event.preventDefault();

  let title = document.getElementById("title").value;
  let amount = document.getElementById("amount").value;
  let date = document.getElementById("date").value;
  let category = document.getElementById("category").value;

  const expense = {
    id: Date.now(),
    title,
    amount,
    date,
    category
  };

  let expenses = JSON.parse(localStorage.getItem("expenses")) || [];
  expenses.push(expense);
  localStorage.setItem("expenses", JSON.stringify(expenses));
  renderExpenses();
}

function renderExpenses() {
  let expenses = JSON.parse(localStorage.getItem("expenses")) || [];
  let container = document.getElementById("cardsContainer");

  container.innerHTML = "";

  expenses.forEach(expense => {
    let card = document.createElement("div");
    card.className = "card";

    card.innerHTML = `
      <div class="container">
      <h3 class="card-title">${expense.title}</h3>
      <p class="card-date">📅 ${expense.date}</p>
      <p class="card-amount">💰 ₹${expense.amount}</p>
      <p class="card-category">🏷 ${expense.category}</p>
      <button onclick="deleteExpense(${expense.id})">Delete</button>
      </div>
    `;

    container.appendChild(card);
  });
}
