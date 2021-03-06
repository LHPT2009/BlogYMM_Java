<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <title>404 Trang không tồn tại</title>
        <link
            href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;700;900&display=swap"
            rel="stylesheet"
            />
        <link href="build/css/tailwind.css" rel="stylesheet" type="text/css"/>
        <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.7.3/dist/alpine.min.js" defer></script>
    </head>
    <body>
        <div x-data="setup()" x-init="$refs.loading.classList.add('hidden'); setColors(color);" :class="{ 'dark': isDark }">
             <!-- Loading screen -->
             <div
                x-ref="loading"
                class="fixed inset-0 z-50 flex items-center justify-center text-2xl font-semibold text-white bg-primary-darker"
                >
                Đang tải.....
            </div>
            <main
                aria-labelledby="pageTitle"
                class="flex items-center justify-center h-screen bg-gray-100 dark:bg-dark dark:text-light"
                >
                <div class="p-4 space-y-4">
                    <div class="flex flex-col items-start space-y-3 sm:flex-row sm:space-y-0 sm:items-center sm:space-x-3">
                        <p class="font-semibold text-danger-light text-9xl dark:text-danger">404</p>
                        <div class="space-y-2">
                            <h1 id="pageTitle" class="flex items-center space-x-2">
                                <svg
                                    aria-hidden="true"
                                    class="w-6 h-6 text-danger-light dark:text-danger"
                                    xmlns="http://www.w3.org/2000/svg"
                                    fill="none"
                                    viewBox="0 0 24 24"
                                    stroke="currentColor"
                                    >
                                <path
                                    stroke-linecap="round"
                                    stroke-linejoin="round"
                                    stroke-width="2"
                                    d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z"
                                    />
                                </svg>
                                <span class="text-xl font-medium text-gray-600 sm:text-2xl dark:text-light">
                                    Không tìm thấy trang!
                                </span>
                            </h1>
                            <p class="text-base font-normal text-gray-600 dark:text-gray-300">
                                Không tìm thấy trang bạn đang tìm.
                            </p>
                            <p class="text-base font-normal text-gray-600 dark:text-gray-300">
                                Bạn có thể trở lại
                                <a href="home" class="text-blue-600 hover:underline dark:text-blue-500">trang chủ</a>
                            </p>
                        </div>
                    </div>
                </div>
            </main>
        </div>
        <script>
            const setup = () => {
                const getTheme = () => {
                    if (window.localStorage.getItem('dark')) {
                        return JSON.parse(window.localStorage.getItem('dark'))
                    }
                    return !!window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches
                }

                const setTheme = (value) => {
                    window.localStorage.setItem('dark', value)
                }

                const getColor = () => {
                    if (window.localStorage.getItem('color')) {
                        return window.localStorage.getItem('color')
                    }
                    return 'cyan'
                }

                const setColors = (color) => {
                    const root = document.documentElement
                    root.style.setProperty('--color-primary', `var(--color-${color})`)
                    root.style.setProperty('--color-primary-50', `var(--color-${color}-50)`)
                    root.style.setProperty('--color-primary-100', `var(--color-${color}-100)`)
                    root.style.setProperty('--color-primary-light', `var(--color-${color}-light)`)
                    root.style.setProperty('--color-primary-lighter', `var(--color-${color}-lighter)`)
                    root.style.setProperty('--color-primary-dark', `var(--color-${color}-dark)`)
                    root.style.setProperty('--color-primary-darker', `var(--color-${color}-darker)`)
                    this.selectedColor = color
                    window.localStorage.setItem('color', color)
                }

                return {
                    loading: true,
                    isDark: getTheme(),
                    toggleTheme() {
                        this.isDark = !this.isDark
                        setTheme(this.isDark)
                    },
                    color: getColor(),
                    setColors,
                }
            }
        </script>
    </body>
</html>
