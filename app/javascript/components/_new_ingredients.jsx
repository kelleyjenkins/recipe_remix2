import React from 'react'


export const NewIngredients = (props) => {
  let formFields = {}

  return(
    <div>
      <input ref={input => formFields.ingredient = input} placeholder = 'Enter ingredient'/>
      <input ref={input => formFields.ingredient = input} placeholder = 'Enter ingredient'/>
      <input ref={input => formFields.ingredient = input} placeholder = 'Enter ingredient'/>
      <button onClick={ () => props.handleFormSubmit()}>Submit</button>
    </div>
  )


}
