<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <!-- Sidebar -->
        <aside class="flex-shrink-0 hidden w-64 bg-white border-r dark:border-primary-darker dark:bg-darker md:block">
            <div class="flex flex-col h-full">
                <!-- Sidebar links -->
                <nav aria-label="Main" class="flex-1 px-2 py-4 space-y-2 overflow-y-hidden hover:overflow-y-auto">

                    <!-- Pages links -->
                    <div x-data="{ isActive: false, open: false }">
                        <!-- active classes 'bg-primary-100 dark:bg-primary' -->
                        <a
                            href="#"
                            @click="$event.preventDefault(); open = !open"
                            class="flex items-center p-2 text-gray-500 transition-colors rounded-md dark:text-light hover:bg-primary-100 dark:hover:bg-primary"
                            :class="{ 'bg-primary-100 dark:bg-primary': isActive || open }"
                            role="button"
                            aria-haspopup="true"
                            :aria-expanded="(open || isActive) ? 'true' : 'false'"
                            >
                            <span aria-hidden="true">
                                <svg
                                    class="w-5 h-5"
                                    xmlns="http://www.w3.org/2000/svg"
                                    fill="none"
                                    viewBox="0 0 24 24"
                                    stroke="currentColor"
                                    >
                                <path
                                    stroke-linecap="round"
                                    stroke-linejoin="round"
                                    stroke-width="2"
                                    d="M7 21h10a2 2 0 002-2V9.414a1 1 0 00-.293-.707l-5.414-5.414A1 1 0 0012.586 3H7a2 2 0 00-2 2v14a2 2 0 002 2z"
                                    />
                                </svg>
                            </span>
                            <span class="ml-2 text-sm"> Bài viết </span>
                            <span aria-hidden="true" class="ml-auto">
                                <!-- active class 'rotate-180' -->
                                <svg
                                    class="w-4 h-4 transition-transform transform"
                                    :class="{ 'rotate-180': open }"
                                    xmlns="http://www.w3.org/2000/svg"
                                    fill="none"
                                    viewBox="0 0 24 24"
                                    stroke="currentColor"
                                    >
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                                </svg>
                            </span>
                        </a>
                        <div x-show="open" class="mt-2 space-y-2 px-7" role="menu" arial-label="Pages">
                            <!-- active & hover classes 'text-gray-700 dark:text-light' -->
                            <!-- inActive classes 'text-gray-400 dark:text-gray-400' -->
                            <a
                                href="managerallpost"
                                role="menuitem"
                                class="block p-2 text-sm text-gray-400 transition-colors duration-200 rounded-md dark:text-gray-400 dark:hover:text-light hover:text-gray-700"
                                >
                                Tất cả bài viết
                            </a>
                            <a
                                href="managerallcomment"
                                role="menuitem"
                                class="block p-2 text-sm text-gray-400 transition-colors duration-200 rounded-md dark:text-gray-400 dark:hover:text-light hover:text-gray-700"
                                >
                                Bình luận
                            </a>
                        </div>
                    </div>

<!--                     Components links 
                    <div x-data="{ isActive: false, open: false }">
                         active classes 'bg-primary-100 dark:bg-primary' 
                        <a
                            href="#"
                            @click="$event.preventDefault(); open = !open"
                            class="flex items-center p-2 text-gray-500 transition-colors rounded-md dark:text-light hover:bg-primary-100 dark:hover:bg-primary"
                            :class="{ 'bg-primary-100 dark:bg-primary': isActive || open }"
                            role="button"
                            aria-haspopup="true"
                            :aria-expanded="(open || isActive) ? 'true' : 'false'"
                            >
                            <span aria-hidden="true">
                                <svg
                                    class="w-5 h-5"
                                    xmlns="http://www.w3.org/2000/svg"
                                    fill="none"
                                    viewBox="0 0 24 24"
                                    stroke="currentColor"
                                    >
                                <path
                                    stroke-linecap="round"
                                    stroke-linejoin="round"
                                    stroke-width="2"
                                    d="M4 6a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2H6a2 2 0 01-2-2V6zM14 6a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2V6zM4 16a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2H6a2 2 0 01-2-2v-2zM14 16a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2v-2z"
                                    />
                                </svg>
                            </span>
                            <span class="ml-2 text-sm"> Thể loại </span>
                            <span aria-hidden="true" class="ml-auto">
                                 active class 'rotate-180' 
                                <svg
                                    class="w-4 h-4 transition-transform transform"
                                    :class="{ 'rotate-180': open }"
                                    xmlns="http://www.w3.org/2000/svg"
                                    fill="none"
                                    viewBox="0 0 24 24"
                                    stroke="currentColor"
                                    >
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                                </svg>
                            </span>
                        </a>
                        <div x-show="open" class="mt-2 space-y-2 px-7" role="menu" arial-label="Components">
                             active & hover classes 'text-gray-700 dark:text-light' 
                             inActive classes 'text-gray-400 dark:text-gray-400' 
                            <a
                                href="managerallcategory"
                                role="menuitem"
                                class="block p-2 text-sm text-gray-400 transition-colors duration-200 rounded-md dark:text-gray-400 dark:hover:text-light hover:text-gray-700"
                                >
                                Tất cả thể loại
                            </a>

                        </div>
                    </div>-->

                    <!-- Authentication links -->
                    <div x-data="{ isActive: false, open: false}">
                        <!-- active & hover classes 'bg-primary-100 dark:bg-primary' -->
                        <a
                            href="#"
                            @click="$event.preventDefault(); open = !open"
                            class="flex items-center p-2 text-gray-500 transition-colors rounded-md dark:text-light hover:bg-primary-100 dark:hover:bg-primary"
                            :class="{'bg-primary-100 dark:bg-primary': isActive || open}"
                            role="button"
                            aria-haspopup="true"
                            :aria-expanded="(open || isActive) ? 'true' : 'false'"
                            >
                            <span aria-hidden="true">
                                <svg
                                    class="w-5 h-5"
                                    xmlns="http://www.w3.org/2000/svg"
                                    fill="none"
                                    viewBox="0 0 24 24"
                                    stroke="currentColor"
                                    >
                                <path
                                    stroke-linecap="round"
                                    stroke-linejoin="round"
                                    stroke-width="2"
                                    d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"
                                    />
                                </svg>
                            </span>
                            <span class="ml-2 text-sm"> Tài khoản </span>
                            <span aria-hidden="true" class="ml-auto">
                                <!-- active class 'rotate-180' -->
                                <svg
                                    class="w-4 h-4 transition-transform transform"
                                    :class="{ 'rotate-180': open }"
                                    xmlns="http://www.w3.org/2000/svg"
                                    fill="none"
                                    viewBox="0 0 24 24"
                                    stroke="currentColor"
                                    >
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                                </svg>
                            </span>
                        </a>
                        <div x-show="open" class="mt-2 space-y-2 px-7" role="menu" aria-label="Authentication">
                            <!-- active & hover classes 'text-gray-700 dark:text-light' -->
                            <!-- inActive classes 'text-gray-400 dark:text-gray-400' -->
                            <a
                                href="manageralladmin"
                                role="menuitem"
                                class="block p-2 text-sm text-gray-400 transition-colors duration-200 rounded-md dark:hover:text-light hover:text-gray-700"
                                >
                                Quản trị viên
                            </a>
                            <a
                                href="manageralluser"
                                role="menuitem"
                                class="block p-2 text-sm text-gray-400 transition-colors duration-200 rounded-md dark:hover:text-light hover:text-gray-700"
                                >
                                Khách
                            </a>
                        </div>
                    </div>

                    <!-- Layouts links -->
                    <div x-data="{ isActive: false, open: false}">
                        <!-- active & hover classes 'bg-primary-100 dark:bg-primary' -->
                        <a
                            href="#"
                            @click="$event.preventDefault(); open = !open"
                            class="flex items-center p-2 text-gray-500 transition-colors rounded-md dark:text-light hover:bg-primary-100 dark:hover:bg-primary"
                            :class="{'bg-primary-100 dark:bg-primary': isActive || open}"
                            role="button"
                            aria-haspopup="true"
                            :aria-expanded="(open || isActive) ? 'true' : 'false'"
                            >
                            <span aria-hidden="true">
                                <svg
                                    class="w-5 h-5"
                                    xmlns="http://www.w3.org/2000/svg"
                                    fill="none"
                                    viewBox="0 0 24 24"
                                    stroke="currentColor"
                                    >
                                <path
                                    stroke-linecap="round"
                                    stroke-linejoin="round"
                                    stroke-width="2"
                                    d="M4 5a1 1 0 011-1h14a1 1 0 011 1v2a1 1 0 01-1 1H5a1 1 0 01-1-1V5zM4 13a1 1 0 011-1h6a1 1 0 011 1v6a1 1 0 01-1 1H5a1 1 0 01-1-1v-6zM16 13a1 1 0 011-1h2a1 1 0 011 1v6a1 1 0 01-1 1h-2a1 1 0 01-1-1v-6z"
                                    />
                                </svg>
                            </span>
                            <span class="ml-2 text-sm"> Trang web </span>
                            <span aria-hidden="true" class="ml-auto">
                                <!-- active class 'rotate-180' -->
                                <svg
                                    class="w-4 h-4 transition-transform transform"
                                    :class="{ 'rotate-180': open }"
                                    xmlns="http://www.w3.org/2000/svg"
                                    fill="none"
                                    viewBox="0 0 24 24"
                                    stroke="currentColor"
                                    >
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                                </svg>
                            </span>
                        </a>
                        <div x-show="open" class="mt-2 space-y-2 px-7" role="menu" aria-label="Layouts">
                            <!-- active & hover classes 'text-gray-700 dark:text-light' -->
                            <!-- inActive classes 'text-gray-400 dark:text-gray-400' -->
                            <a
                                href="managerallcategory"
                                role="menuitem"
                                class="block p-2 text-sm text-gray-400 transition-colors duration-200 rounded-md dark:text-gray-400 dark:hover:text-light hover:text-gray-700"
                                >
                                Thể loại
                            </a>
<!--                            <a
                                href="managerallhot"
                                role="menuitem"
                                class="block p-2 text-sm text-gray-400 transition-colors duration-200 rounded-md dark:text-gray-400 dark:hover:text-light hover:text-gray-700"
                                >
                                Nổi bật
                            </a>-->
                            <a
                                href="managerallcontact"
                                role="menuitem"
                                class="block p-2 text-sm text-gray-400 transition-colors duration-200 rounded-md dark:text-gray-400 dark:hover:text-light hover:text-gray-700"
                                >
                                Liên hệ
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
        </aside>
    </body>
</html>
