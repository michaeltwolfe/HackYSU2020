import React, { Component } from 'react';
import PropTypes from 'prop-types';

import classes from './RecipeIngredient.css';

class RecipeIngredient extends Component {
    render() {
        let ingredient = null;

        //ingredient = <div className={this.props.types}></div>
        switch (this.props.type) {
            case ('eggs'):
                ingredient = <div><p>eggs</p></div>
                break;
            case ('milk'):
                ingredient = <div><p>milk</p></div>
                break;
        }

        return ingredient;
    }
}

export default RecipeIngredient;

RecipeIngredient.propTypes = {
    type: PropTypes.string.isRequired
};