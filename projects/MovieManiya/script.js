const allmovies = [
  {
    title: "Phir hera pheri",
    img: "images/img1.jpg",
    year: 2006,
    genre: "Comedy",
  },
  {
    title: "Bhool bhoolaiya 2",
    img: "images/img2.jpeg",
    year: 2022,
    genre: "Horror",
  },
  {
    title: "Stranger things",
    img: "images/img3.jpeg",
    year: 2016,
    genre: "Thriller",
  },
  {
    title: "Panchayat",
    img: "images/img4.jpeg",
    year: 2020,
    genre: "Drama",
  },
  {
    title: "Money heist",
    img: "images/img5.jpg",
    year: 2017,
    genre: "Thriller",
  },
  {
    title: "Pathaan",
    img: "images/img6.jpeg",
    year: 2023,
    genre: "Action",
  },
  {
    title: "RRR",
    img: "images/img7.jpeg",
    year: 2022,
    genre: "Action",
  },
  {
    title: "Mission mangal",
    img: "images/img8.jpeg",
    year: 2019,
    genre: "sci-fi",
  },
  {
    title: "3 idiots",
    img: "images/img9.jpeg",
    year: 2009,
    genre: "Drama",
  },
  {
    title: "DDlj",
    img: "images/img10.jpeg",
    year: 1995,
    genre: "Drama",
  },
  {
    title: "KGF",
    img: "images/img11.jpeg",
    year: 2018,
    genre: "Action",
  },
  {
    title: "bahubali",
    img: "images/img12.jpeg",
    year: 2015,
    genre: "Action",
  },
  {
    title: "the conjuring",
    img: "images/img13.jpeg",
    year: 2013,
    genre: "Horror",
  },
  {
    title: "the boys",
    img: "images/img14.jpg",
    year: 2016,
    genre: "Thriller",
  },
  {
    title: "wednesday",
    img: "images/img15.jpeg",
    year: 2023,
    genre: "Horror",
  },
];

function fetchData(movies) {
  let container = document.getElementById("container");

  container.innerHTML = movies
    .map(movie => `
      <div class="card">
        <img class="setimg" src="${movie.img}" alt="${movie.title}">
        <h2>${movie.title}</h2>
        <p>${movie.year}</p>
        <p>${movie.genre}</p>
      </div>
    `)
}

function filterData(value =null , isSearch = false , isSort=false) {
  console.log(isSearch);
  console.log(value);
  console.log(isSort);
  let filteredMovies = allmovies;
  console.log(filteredMovies);
  

if(!value){
  return fetchData(filteredMovies);
 }else if(isSort){
    if (value === "new release") {
    filteredMovies = allmovies
      .sort((a, b) => b.year - a.year);
  }
  else if (value === "old is gold") {
    filteredMovies = allmovies
      .sort((a, b) => a.year - b.year);
  }
  return fetchData(filteredMovies);
  }else{
    filteredMovies = allmovies.filter(movie =>
   {
     if(!isSearch){
       return movie.genre.toLowerCase() === value.toLowerCase()
     }else{
       return movie.title.toLowerCase().includes(value) || movie.genre.toLowerCase().includes(value)
       
      }
    }
    
  );
  return fetchData(filteredMovies);
  }
  
}

const search = document.getElementById("search");

search.addEventListener("input" , (e) => {
  const query = e.target.value.toLowerCase().trim();
  // searchData(query)
  filterData(query, true)
})

// filtering mate
const dropdown = document.getElementById("movieselection");
dropdown.addEventListener("change", function() {
  const selectedValue = this.value;
  
  filterData(selectedValue , null , true)
});
 

window.addEventListener("DOMContentLoaded",filterData());