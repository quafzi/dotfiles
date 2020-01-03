====================
My vim configuration
====================

I'm currently developing JS and PHP applications, so my configuration focuses on these tasks.

Leader: ','

Space might be used as leader, too.


PHP Debugging
-------------

* install ``php-xdebug``
* ``phpenmod xdebug``
* add these lines to your ``php.ini``

  ::
  
      [xdebug]
      xdebug.remote_enable=1
      xdebug.remote_host=localhost
      xdebug.remote_port=9000

