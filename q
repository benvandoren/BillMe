[33mcommit 2f9da9f8a82603576548be64aece66774ade7b13[m
Author: Ben VanDoren <bv@benvandoren.com>
Date:   Wed Jul 23 12:17:37 2014 -0400

    add project_id field to billables

[33mcommit 3ab50299d2b4ab32467ec634d3eba6461e39b5fe[m
Author: Ben VanDoren <bv@benvandoren.com>
Date:   Wed Jul 23 11:24:15 2014 -0400

    fix model relationships

[33mcommit 5a64a7053d6db3628a183f09e6de82243f72970b[m
Author: Ben VanDoren <bv@benvandoren.com>
Date:   Wed Jul 23 01:12:43 2014 -0400

    Fill in create and new method in projects controller, add validates to project model, make form for generating project, add route and declare resources in routes.rb. Still need to restrict creation access to admin users / fix admin session helper.

[33mcommit 665fc29f40c5561590c60659648c266ed0e5d6c4[m
Author: Ben VanDoren <bv@benvandoren.com>
Date:   Wed Jul 23 00:06:24 2014 -0400

    Create shared partials folder, add feed and feed_item partials

[33mcommit 09d15d3964c55d686bce049d987373d8b5ccb8f1[m
Author: Ben VanDoren <bv@benvandoren.com>
Date:   Tue Jul 22 23:44:41 2014 -0400

    Begin creating feed items to display projects. Admin user will see all projects associated with him, Customer user will see all projects associated with him. Add session helper test for Admin to restrict creating projects to Admin users. Remove commented out gem devise from gem file

[33mcommit 7f3c95b0e6ced8dc6eded0c927820fbc2db083a4[m
Author: Ben VanDoren <bv@benvandoren.com>
Date:   Tue Jul 22 22:10:49 2014 -0400

    further use helper methods for sessions controller, change root to new session, and started working on models

[33mcommit 22b665ff200df6f8367b178fdea794dcc84ddf8a[m
Author: Ben VanDoren <bv@benvandoren.com>
Date:   Tue Jul 22 21:58:48 2014 -0400

    add and use SessionHelper methods

[33mcommit 27d3b5146f54d388894d1b891b79cbef702878b8[m
Author: Ben VanDoren <bv@benvandoren.com>
Date:   Tue Jul 22 21:41:03 2014 -0400

    crud for customers in customers_controllerr, changed routes to create customer by default

[33mcommit 186ef9ff16a0aa69b1b63009851f95f2551bad13[m
Author: Ben VanDoren <bv@benvandoren.com>
Date:   Tue Jul 22 11:47:01 2014 -0400

    add projects and billable(hours) model and controllers

[33mcommit f947e07f9f71026f28699a047cf8ee6dd520c00c[m
Author: Ben VanDoren <bv@benvandoren.com>
Date:   Tue Jul 22 10:19:07 2014 -0400

    first commit, based off of login_app, customer and admin models already made
