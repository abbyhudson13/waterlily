const searchInput = document.getElementById('query');
const suggestions = document.querySelector('.suggestions');
const body= document.querySelector('.content'); 

const subcategories = JSON.parse(document.getElementById('search-data').dataset.subcategories)

function findMatches(wordToMatch, subcategories) {
    return subcategories.filter(subcat => {
    const regex = new RegExp(wordToMatch, 'gi');
    return subcat.match(regex);
  });
}

function displayMatches() {
  const matchArray = findMatches(this.value, subcategories);
  const html = matchArray.map(result => {
    return `
      <li class="search-complete">
        <a href="/treatments?utf8=%E2%9C%93&query=${result}&commit=Search"><span id="name">${result}</span></a>
      </li>
    `;
  }).join('');
  suggestions.innerHTML = html;
}

function hideMatches(event) {
  if (event.target != suggestions) {
    suggestions.innerHTML = ``;
  }
}

searchInput.addEventListener('keyup', displayMatches);
body.addEventListener('click', hideMatches)


export { findMatches };
export { displayMatches };
export { hideMatches };