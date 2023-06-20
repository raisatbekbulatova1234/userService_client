package my.project.userserviceclient.dto;

import java.util.Collection;

public interface UserDTO {
    Long getId();
    String getUsername();
    String getName();
    Collection<RoleDTO> getRoles();
}