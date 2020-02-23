import React from 'react';
import { NavLink } from 'react-router-dom';

import classes from './NavigationItems.css'

const navigationItems = () => (
    <ul className="NavigationItems">
        <li className="NavigationItem"><NavLink to="/">RECIPES</NavLink></li>
        <li className="NavigationItem"><NavLink to="/inventory">INVENTORY</NavLink></li>
    </ul>
);

export default navigationItems;