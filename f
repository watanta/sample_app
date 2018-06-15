
[1mFrom:[0m /usr/local/rvm/gems/ruby-2.4.1/gems/actionpack-5.1.4/lib/action_controller/metal/instrumentation.rb @ line 33 ActionController::Instrumentation#process_action:

    [1;34m17[0m: [32mdef[0m [1;34mprocess_action[0m(*args)
    [1;34m18[0m:   raw_payload = {
    [1;34m19[0m:     [35mcontroller[0m: [1;36mself[0m.class.name,
    [1;34m20[0m:     [35maction[0m: action_name,
    [1;34m21[0m:     [35mparams[0m: request.filtered_parameters,
    [1;34m22[0m:     [35mheaders[0m: request.headers,
    [1;34m23[0m:     [35mformat[0m: request.format.ref,
    [1;34m24[0m:     [35mmethod[0m: request.request_method,
    [1;34m25[0m:     [35mpath[0m: request.fullpath
    [1;34m26[0m:   }
    [1;34m27[0m: 
    [1;34m28[0m:   [1;34;4mActiveSupport[0m::[1;34;4mNotifications[0m.instrument([31m[1;31m"[0m[31mstart_processing.action_controller[1;31m"[0m[31m[0m, raw_payload.dup)
    [1;34m29[0m: 
    [1;34m30[0m:   [1;34;4mActiveSupport[0m::[1;34;4mNotifications[0m.instrument([31m[1;31m"[0m[31mprocess_action.action_controller[1;31m"[0m[31m[0m, raw_payload) [32mdo[0m |payload|
    [1;34m31[0m:     [32mbegin[0m
    [1;34m32[0m:       result = [32msuper[0m
 => [1;34m33[0m:       payload[[33m:status[0m] = response.status
    [1;34m34[0m:       result
    [1;34m35[0m:     [32mensure[0m
    [1;34m36[0m:       append_info_to_payload(payload)
    [1;34m37[0m:     [32mend[0m
    [1;34m38[0m:   [32mend[0m
    [1;34m39[0m: [32mend[0m
