import React from 'react';

import classes from './NavigationItems.css'

const navigationItems = () => (
    <ul className="NavigationItems">
        <li className="NavigationItem"><a href="/">HOME</a></li>
        <li className="NavigationItem"><a href="/">RECIPES</a></li>
        <li className="NavigationItem"><a href="/">INVENTORY</a></li>
    </ul>
);

export default navigationItems;