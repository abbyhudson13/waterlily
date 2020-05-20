import 'js-autocomplete/auto-complete.css';
import autocomplete from 'js-autocomplete';
const searchInput = document.getElementById('query');
const suggestions = document.querySelector('.suggestions');

  const subcategories = JSON.parse(document.getElementById('search-data').dataset.subcategories)
  console.log(subcategories);

  function findMatches(wordToMatch, subcategories) {
    return subcategories.filter(subcat => {
  // here we need to figure out if the city or state matches what was searched
    const regex = new RegExp(wordToMatch, 'gi');
    return subcat.match(regex);
});
  }

  function displayMatches() {
  const matchArray = findMatches(this.value, subcategories);
  const html = matchArray.map(result => {
    const regex = new RegExp(this.value, 'gi');
    const subCat = result.replace(regex, `<span class="hl">${this.value}</span>`);
    return `
      <li>
        <span id="name">${subCat}</span>
      </li>
    `;
  }).join('');
  suggestions.innerHTML = html;
}

searchInput.addEventListener('keyup', displayMatches);
document.getElementById("name").onselect = function() {myFunction()};
function myFunction() {
  console.log("hello");
}


export { autocompleteSearch };
