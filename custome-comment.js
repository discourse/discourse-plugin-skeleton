// plugins/admin-auto-comment/assets/javascripts/discourse/initializers/admin-auto-comment.js

import { withPluginApi } from 'discourse/lib/plugin-api';

export default {
  name: 'admin-auto-comment',

  initialize() {
    withPluginApi('0.8', api => {
      api.onPageChange(url => {
        if (url === 'topic') {
          const composerController = api.container.lookup('controller:composer');
          const currentUser = api.getCurrentUser();

          if (currentUser && currentUser.get('admin')) {
            composerController.set('draft.raw', 'This is an automatic comment from an admin.');
          }
        }
      });
    });
  },
};
