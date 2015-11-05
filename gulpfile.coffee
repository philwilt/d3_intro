gulp = require 'gulp'
gutil = require('gulp-util')
sass = require 'gulp-sass'
coffee = require 'gulp-coffee'

gulp.task 'sass', ->
  gulp.src './sass/**/*.scss'
    .pipe sass().on 'error', sass.logError
    .pipe gulp.dest('./css')

gulp.task 'sass:watch', ->
  gulp.watch './sass/**/*.scss', ['sass']

gulp.task 'coffee', ->
  gulp.src './scripts/*.coffee'
  .pipe coffee({bare: true}).on 'error', gutil.log
  .pipe gulp.dest './js/'

gulp.task 'coffee:watch', ->
  gulp.watch './scripts/*.coffee', ['coffee']

gulp.task 'default', ['sass', 'sass:watch', 'coffee', 'coffee:watch']
