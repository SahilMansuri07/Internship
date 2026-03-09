// list data with API

document.addEventListener("DOMContentLoaded", async function () {
  const countryDropdown = document.getElementById("country");
  const stateDropdown = document.getElementById("state");
  const cityDropdown = document.getElementById("cities")
  console.log(countryDropdown);

  //   country data fetch
 

  let countrydata = [];
  const apiUrl = "https://countriesnow.space/api/v0.1/countries/states";
  const response = await fetch(apiUrl);

  const data = await response.json();
  countrydata = data.data;
  console.log(data);
  cityDropdown.style.visibility = "hidden" ; 
  stateDropdown.style.visibility = "hidden";

  countrydata.forEach((e) => {
    countryDropdown.innerHTML += `<option value="${e.name}">${e.name}"</option>`;
  });

//   states data fetch
  countryDropdown.onchange = () => {
    stateDropdown.style.visibility = "visible";
    stateDropdown.innerHTML = `<option value="">Select State</option>`;

    let states = [];
    for (let i = 0; i < countrydata.length; i++) {
      if (countrydata[i].name === countryDropdown.value) {
        states = countrydata[i].states;
        break;
      }
    }

    console.log("this is states data ", states);

    states.forEach((s) => {

      stateDropdown.innerHTML += `<option value="${s.name}">${s.name}</option>`;
    });

    // city data fetch

    stateDropdown.onchange = async () => {
        cityDropdown.style.visibility = "visible";
      const cityUrl =
        "https://countriesnow.space/api/v0.1/countries/state/cities/";
      const response =await fetch (cityUrl, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          country: countryDropdown.value,
          state: stateDropdown.value,
        }),
      });
      const data = await response.json();
      data.data.forEach((city) => {
        cityDropdown.innerHTML += `<option value="${city}">${city}</option>`;
        });
    };

    const submitbtn = document.getElementById("submitbtn");

    submitbtn.on = () => {
        console.log(countryDropdown.value)
    }
  };
});
