import React from 'react';

import classes from './Recipe.css'

const recipe = (props) => (
    <div>
        <table className="Recipe">
            <thead>
            <tr>
                <th>Id</th>
                <th>Name</th>
            </tr>
            </thead>
            <tbody>
            <tr className={props.complete === 0 ? "Bad" : "Good"}>
                <td>{props.keys}</td>
                <td>{props.title}</td>
            </tr>
            </tbody>
        </table>
    </div>
);

export default recipe;