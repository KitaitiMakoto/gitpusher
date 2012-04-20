# gitpusher

gitpusher is a command line tool for replicating git repositories from one service to another.

```
$ gitpusher -c default.yml
```

default.yaml is like this.

```
:base_dir: /var/repos
:src:
  :type: github
:dest:
  :type: bitbucket
```

With this settings, All of your repositories on GitHub will be replicated to BitBucket.
(User name and password of each service are asked when you run the command first.)

If you would like to replicate GitHub organization's repos instead of your own repos, settings are like this.

```
:base_dir: /var/repos
:src:
  :type: github
  :organization: github
:dest:
  :type: bitbucket
```

Now this tool support only replicating from GitHub to BitBucket.
