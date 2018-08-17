import React from 'react'
import Body from './_body'
import  {NewIngredients}  from './_new_ingredients'

const Main = (props) => {
  return(
    <div>
      <h1>Enter Ingredients!</h1>
      <NewIngredients/>
      <Body/>
    </div>
  )
}
export default Main
