import React from 'react';

const item = (props) => (
            <tr>
                <td>{props.keys}</td>
                <td>{props.title}</td>
                <td>{props.amount}</td>
            </tr>
);

export default item;
