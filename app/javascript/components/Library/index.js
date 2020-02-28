import React from 'react';
import { Query } from 'react-apollo';
import gql from 'graphql-tag';

const LibraryQuery = gql`
  {
    items {
      id
      title
      owner {
        email
      }
    }
  }
`;

export default () => (
  <Query query={LibraryQuery}>
    {({ data, loading }) => (
      <div>
        {loading
          ? 'loading...'
          : data.items.map(({ title, id, owner }) => (
              <div key={id}>
                <b>{title}</b> {owner ? `added by ${owner.email}` : null}
              </div>
            ))}
      </div>
    )}
  </Query>
);
