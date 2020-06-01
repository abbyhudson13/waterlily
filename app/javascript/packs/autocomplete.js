const searchInput = document.getElementById('query');
const suggestions = document.querySelector('.suggestions');

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
    const regex = new RegExp(this.value, 'gi');
    const subCat = result.replace(regex, `<span class="hl">${this.value}</span>`);
    return `
      <li class="search-complete">
        <a href=""><span id="name">${subCat}</span></a>
      </li>
    `;
  }).join('');
  suggestions.innerHTML = html;
}

searchInput.addEventListener('keyup', displayMatches);



export { autocompleteSearch };
