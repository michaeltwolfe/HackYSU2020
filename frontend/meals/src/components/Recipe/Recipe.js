import React from 'react';

import classes from './Recipe.css';
import RecipeIngredient from './RecipeIngredient/RecipeIngredient';

const recipe = (props) => {
    const transformedIngredients = Object.keys(props.ingredients)
        .map(igKey => {
            return [...Array(props.ingredients[igKey])].map((_, i) => {
                return <RecipeIngredient key={igKey + i} type={igKey} />
            });
        });

    return (
        <div className={classes.Recipe}>
            <p>Test</p>
        </div>
    );
};

export default recipe;