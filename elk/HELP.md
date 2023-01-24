# ELK Help

## Configuring Elastic Search

```sh
bin/elasticsearch-create-enrollment-token --scope kibana
```

```sh
bin/kibana-verification-code
```

## Creating User

```sh
bin/elasticsearch-users useradd admin -p elasticadmin -r kibana_admin
```

## Issues

-  max virtual memory areas vm.max_map_count [65530] is too low, increase to at least [262144]

    [github issue link]((https://github.com/docker-library/elasticsearch/issues/111))
    ```sh
    sudo sysctl -w vm.max_map_count=262144
    ```