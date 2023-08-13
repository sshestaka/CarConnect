package taxi.service.authentication;

import taxi.dao.DriverDao;
import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverDao driverDao;

    @Override
    public Driver login(String login, String password) {
        Driver driver = driverDao.getDriverByLogin(login)
                .orElseThrow(
                        () -> new AuthenticationException("Username or password was incorrect")
        );
        if (driver.getPassword().equals(password)) {
            return driver;
        }
        throw new AuthenticationException("Username or password was incorrect");
    }
}
