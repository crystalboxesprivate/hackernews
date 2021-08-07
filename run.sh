if [ "${APP}" == "blog" ]; then
  echo "(load \"blog.arc\")(bsv)" | mzscheme -f /app/src/as.scm
elif [ "${APP}" == "news" ]; then
  echo "(load \"news.arc\")(nsv)" | mzscheme -f /app/src/as.scm
else
  mzscheme -f /app/src/as.scm
fi
