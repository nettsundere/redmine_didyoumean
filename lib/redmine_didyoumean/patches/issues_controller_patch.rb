module RedmineDidyoumean
  module Patches
    module IssuesControllerPatch
      class << self
        def included(base)
          base.class_eval do
            helper_method :issues_didyoumean_event_type
          end
        end
      end

      def issues_didyoumean_event_type
        if Setting.plugin_redmine_didyoumean['start_search_when'] == "1"
          "keyup"
        else
          "change"
        end
      end
    end
  end
end
