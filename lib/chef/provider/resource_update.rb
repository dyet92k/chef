
class Chef
  class Provider

    # {
    #    "run_id" : "1000",
    #    "resource" : {
    #         "type" : "file",
    #         "name" : "/etc/passwd",
    #         "start_time" : "2012-01-09T08:15:30-05:00",
    #         "end_time" : "2012-01-09T08:15:30-05:00",
    #         "status" : "modified",
    #         "initial_state" : "exists",
    #         "final_state" : "modified",
    #         "before" : {
    #              "group" : "root",
    #              "owner" : "root",
    #              "checksum" : "xyz"
    #         },
    #         "after" : {
    #              "group" : "root",
    #              "owner" : "root",
    #              "checksum" : "abc"
    #         },
    #         "delta" : "escaped delta goes here"
    #    },
    #    "event_data" : ""
    # }

    class ResourceUpdate

      attr_accessor :type, :name, :duration, :status, :initial_state, :final_state, :initial_properties, :final_properties, :event_data

       # ms

       # e.g., a diff.

      def initial_state_from_resource(resource)
        @initial_properties = resource.to_hash
      end

      def updated_state_from_resource(resource)
        @final_properties = resource.to_hash
      end

    end
  end
end
