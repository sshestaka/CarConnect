package taxi.service.authentication;

import taxi.model.Driver;

public interface AuthenticationService {
    Driver login(String login, String password);
}
