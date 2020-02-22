import React from 'react';

import Layout from './components/Layout/Layout';
import RecipeBuilder from './containers/RecipeBuilder/RecipeBuilder';

function App() {
  return (
    <div>
      <Layout>
        <RecipeBuilder/>
      </Layout>
    </div>
  );
}

export default App;
