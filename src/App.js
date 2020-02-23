import React from 'react';
import { Route, Switch } from 'react-router-dom'

import Layout from './components/Layout/Layout';
import RecipeBuilder from './containers/RecipeBuilder/RecipeBuilder';
import RecipeMenu from './containers/RecipeMenu/RecipeMenu';

import 'bootstrap/dist/css/bootstrap.min.css';

function App() {
  return (
    <div>
      <Layout>
        <Switch>
          <Route path="/inventory" component={RecipeBuilder} />
          <Route path="/" exact component={RecipeMenu} />
        </Switch>
      </Layout>
    </div>
  );
}

export default App;
