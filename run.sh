if [ "${APP}" == "blog" ]; then
  echo "(load \"blog.arc\")(bsv)" | mzscheme -f /app/src/as.scm
  exit
elif [ "${APP}" == "news" ]; then
  echo "(load \"news.arc\")(nsv)" | mzscheme -f /app/src/as.scm
  exit
else
  mzscheme -f as.scm
fi
