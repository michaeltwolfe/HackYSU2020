import React, { Component } from 'react';
import axios from 'axios';

import Aux from '../../hoc/Aux';
import Inventory from '../../components/Inventory/Inventory';
import Item from '../../components/Item/Item'

class RecipeBuilder extends Component {
    state = {
        items: []
    }
    componentDidMount() {
        axios.get('http://127.0.0.1:5000/v1/getInventory')
            .then(response => {
                this.setState({items: response.data});
                //console.log(response);
            })
    }

    render () {
        const items = this.state.items.map(
            item => {
                return <Item keys={item.id} title={item.name} amount={item.total}/>
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