import React from 'react'


export default class Body extends React.Component {


  constructor(props) {
    super(props);
    this.state = {
      recipe: [],
    };
    // this.handleFormSubmit = this.handleFormSubmit.bind(this)
    // this.getRecipes = this.getRecipes.bind(this)
  }

  componentDidMount(){
  fetch('http://api.yummly.com/v1/api/recipes?allowedIngredient[]=apples', {
    method: 'GET',
    headers: {
      'Content-Type': 'application/json',
      'X-Yummly-App-ID': process.env.YUMMLY_APP_ID,
      'X-Yummly-App-Key': process.env.YUMMLY_API_KEY,
    }})
      .then(results => {
      return results.json();
    })
    .then(data => {
      let recipe = data.matches.map((r) => {
        return(
          <div key={r.results}>
          <p>{r.recipeName}</p>
          </div>
        )
      })
      this.setState({ recipe: recipe });
    console.log("state", this.state.recipe)
  });
}
render() {
  return(
    <div>
      {this.state.recipe}
    </div>
  )
}
}
