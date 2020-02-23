import React, { Component } from 'react';
import axios from 'axios';

import Aux from '../../hoc/Aux';
import Item from '../../components/Recipe/Recipe'

class RecipeBuilder extends Component {
    state = {
        items: []
    }
    componentDidMount() {
        axios.get('http://127.0.0.1:5000/v1/getRecipes')
            .then(response => {
                this.setState({items: response.data});
                //console.log(response);
            })
    }

    render () {
        const items = this.state.items.map(
            item => {
                return <Item keys={item.id} title={item.name} complete={item.complete}/>
            }
        );

        return (
            <div>
                {items}
            </div>
        );
    }
}

export default RecipeBuilder;