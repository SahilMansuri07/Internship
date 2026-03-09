// using asunc await fetching data 
async function getPremises() {
  try {
    const response = await fetch("https://jsonplaceholder.typicode.com/todos/1");
    // convert data into json formate
    const data = await response.json();
    //select html div
    const container = document.querySelector(".fetchapi");
    //write down details
    container.innerHTML = `

      <p><strong>ID:</strong> ${data.id}</p>
      <p><strong>Title:</strong> ${data.title}</p>
      <p><strong>Completed:</strong> ${data.completed}</p>
    `;

    console.log(data);

  } catch (error) {
    console.error("Error getting data", error);
  }
}

getPremises();