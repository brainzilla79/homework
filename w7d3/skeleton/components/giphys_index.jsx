import React from 'react';

import GiphysIndexItem from './giphys_index_item';

export default class GiphysIndex extends React.Component {
  constructor(props) {
    super(props);

  }

  render() {
    const giphyIndexItems = this.props.giphys.map( (giphy, i) => (<GiphysIndexItem key={giphy.id} giphy={giphy}/>));
    return (
      <div>
        {giphyIndexItems}
      </div>
    );
  }
}
