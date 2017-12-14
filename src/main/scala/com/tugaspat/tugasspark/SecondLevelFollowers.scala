package com.tugaspat.tugasspark

import org.apache.spark.SparkContext
import org.apache.spark.SparkContext._
import org.apache.spark.SparkConf

import java.io._

import scala.collection.mutable.ListBuffer

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

object SecondLevelFollowers {
	@transient lazy val Logger = LoggerFactory.getLogger(this.getClass)

	def main(args: Array[String]) {

		val conf = new SparkConf().setAppName("Spark Arizho SecondLevelFollowers")
    	val sc = new SparkContext(conf)

		val textFile = sc.textFile(args(0))

		def generateFirstKV(lines: Array[String]) : ListBuffer[(String,String)] = {
			var temp_container = new ListBuffer[(String,String)]()
			for (line <- lines) {
				val a = line.split(" ")
				temp_container += ((a(0), "follows:".concat(a(1)) ))
				temp_container += ((a(1), "followed_by:".concat(a(0)) ))
			}
			return temp_container
		}

		val firstIterationMapper = textFile.flatMap(s => generateFirstKV(s.split("\n")))
		val firstIterationShuffler = firstIterationMapper.reduceByKey((x, y) => x++" "++y)

		def generateSecondFollowers(tuple: (String, String)): ListBuffer[(String, String)] = {
			val results = new ListBuffer[(String,String)]()
			val list_of_followers = new ListBuffer[String]()
			val list_of_following = new ListBuffer[String]()
			for (value <- tuple._2.split(" ")){
				if (value.split(":")(0) == "follows") {
					list_of_following += value.split(":")(1)
				}
				else {
					list_of_followers += value.split(":")(1)
				}
			}
			for (follower <- list_of_followers){
				for (following <- list_of_following) {
					results += ((following,follower))
				}
			}
			return results
		}

		val listSecondFollowers = firstIterationShuffler.flatMap(s => generateSecondFollowers(s)).reduceByKey((x, y) => x++" "++y)


		val listTotalSecondFollower = listSecondFollowers.map(s => (s._1,s._2.split(" ").length)).sortBy (-_._2)

		// Logger.info(listTotalSecondFollower.take(10).mkString("[", ",", "]"))
		new PrintWriter("outputpacil.txt") { write(listTotalSecondFollower.take(10).mkString("[", ",", "]")); close }
	}
}