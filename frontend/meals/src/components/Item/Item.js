import React from 'react';

import classes from './Item.css'

const item = (props) => (
    <div>
        <table className="TableStuff">
            <thead>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Amount</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>{props.keys}</td>
                <td>{props.title}</td>
                <td>{props.amount}</td>
            </tr>
            </tbody>
        </table>
    </div>
);

export default item;